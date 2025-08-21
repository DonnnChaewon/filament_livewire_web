<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ArticleResource\Pages;
use App\Filament\Resources\ArticleResource\RelationManagers;
use App\Models\Article;
use App\Models\Category;
use Filament\Forms;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ArticleResource extends Resource {
    protected static ? string $model = Article::class;
    protected static ? string $navigationIcon = 'heroicon-o-clipboard-document-list';
    protected static ? string $navigationGroup = 'Lists';

    public static function form(Form $form): Form {
        return $form
            ->schema([
                TextInput::make('title')->required(),
                Select::make('category_id')->label('Category')->options(Category::all()->pluck('name', 'id'))->required(),
                FileUpload::make('image'),
                RichEditor::make('content')->columnSpan(2),
                Select::make('status')->options([
                    1 => 'Active',
                    0 => 'Inactive'
                ])->required()
            ]);
    }

    public static function table(Table $table): Table {
        return $table
            ->columns([
                TextColumn::make('title')->searchable()
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ]);
    }

    public static function getRelations(): array {
        return [
            //
        ];
    }

    public static function getPages(): array {
        return [
            'index' => Pages\ListArticles::route('/'),
            'create' => Pages\CreateArticle::route('/create'),
            'edit' => Pages\EditArticle::route('/{record}/edit'),
        ];
    }
}
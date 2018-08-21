.class Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;
.super Landroid/database/CursorWrapper;
.source "GlobalSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Wrapper"
.end annotation


# instance fields
.field private final mIdPos:I

.field private final mSummaryPos:I

.field private final mTitlePos:I

.field private final mUrlPos:I

.field final synthetic this$0:Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;Landroid/database/Cursor;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->this$0:Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;

    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string/jumbo v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->mTitlePos:I

    const-string/jumbo v0, "url"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->mUrlPos:I

    const-string/jumbo v0, "summary"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->mSummaryPos:I

    const-string/jumbo v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->mIdPos:I

    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    invoke-static {}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->access$000()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->access$000()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->access$000()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->access$000()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "suggest_text_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->mTitlePos:I

    invoke-super {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->mUrlPos:I

    invoke-super {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "suggest_text_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->mSummaryPos:I

    invoke-super {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "suggest_icon_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "android.resource://com.miui.personalassistant/drawable/fav_logo_s"

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "suggest_intent_action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "android.intent.action.VIEW"

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "suggest_intent_data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->mIdPos:I

    invoke-super {p0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "suggest_shortcut_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "_-1"

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1

    invoke-static {}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->access$100()[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public isNull(I)Z
    .locals 1

    invoke-static {}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->access$100()[I

    move-result-object v0

    aget v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

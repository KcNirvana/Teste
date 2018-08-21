.class Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;
.super Ljava/lang/Object;
.source "FavoriteMainListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnClickLisener"
.end annotation


# instance fields
.field private item:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

.field private position:I

.field final synthetic this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;ILcom/miui/personalassistant/favorite/module/FavoriteRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;->position:I

    iput-object p3, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;->item:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;ILcom/miui/personalassistant/favorite/module/FavoriteRecord;Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;-><init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;ILcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    iget-boolean v0, v0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->isEditing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    iget v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;->position:I

    invoke-virtual {v0, p1, v1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->onCheckBoxClick(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->access$600(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;->item:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->access$700(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/favorite/util/FavUtil;->jumpIntent(Landroid/content/Context;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;Ljava/lang/String;)V

    goto :goto_0
.end method

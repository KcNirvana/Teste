.class Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$MyOnClickLisener;
.super Ljava/lang/Object;
.source "FavoriteListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnClickLisener"
.end annotation


# instance fields
.field private item:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

.field final synthetic this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$MyOnClickLisener;->item:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$MyOnClickLisener;-><init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->access$700(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$MyOnClickLisener;->item:Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$MyOnClickLisener;->this$0:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->access$800(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/favorite/util/FavUtil;->jumpIntent(Landroid/content/Context;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;Ljava/lang/String;)V

    return-void
.end method

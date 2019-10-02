.class Lcom/miui/video/biz/favor/FavorActivity$2;
.super Ljava/lang/Object;
.source "FavorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/favor/FavorActivity;->initFindViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/favor/FavorActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/favor/FavorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity$2;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity$2;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    invoke-static {p1}, Lcom/miui/video/biz/favor/FavorActivity;->access$300(Lcom/miui/video/biz/favor/FavorActivity;)Lcom/miui/video/service/fragment/VideoListFragment;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->onTitleBarClick(Z)V

    return-void
.end method

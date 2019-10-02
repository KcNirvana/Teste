.class Lcom/miui/video/biz/favor/FavorActivity$7;
.super Ljava/lang/Object;
.source "FavorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/favor/FavorActivity;->refreshUIFragment(Z)V
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

    iput-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity$7;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity$7;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    invoke-static {v0}, Lcom/miui/video/biz/favor/FavorActivity;->access$700(Lcom/miui/video/biz/favor/FavorActivity;)Lcom/miui/video/service/fragment/VideoListFragment;

    move-result-object v0

    const-string v1, "com.miui.video.KEY_SET_DATA"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/fragment/VideoListFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

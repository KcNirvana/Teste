.class Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity$1;
.super Landroid/os/Handler;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity$1;->this$0:Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity$1;->this$0:Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

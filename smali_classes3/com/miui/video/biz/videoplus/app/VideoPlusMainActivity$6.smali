.class Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$6;
.super Ljava/lang/Object;
.source "VideoPlusMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$6;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->initPermissionModule()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$6;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$1500(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V

    return-void
.end method

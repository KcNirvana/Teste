.class Lcom/miui/video/base/account/VideoMiAccountManager$5;
.super Ljava/lang/Object;
.source "VideoMiAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/account/VideoMiAccountManager;->getServiceToken(Lcom/miui/video/base/account/VideoMiAccountManager$ServiceTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

.field final synthetic val$serviceTokenCallback:Lcom/miui/video/base/account/VideoMiAccountManager$ServiceTokenCallback;


# direct methods
.method constructor <init>(Lcom/miui/video/base/account/VideoMiAccountManager;Lcom/miui/video/base/account/VideoMiAccountManager$ServiceTokenCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$5;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    iput-object p2, p0, Lcom/miui/video/base/account/VideoMiAccountManager$5;->val$serviceTokenCallback:Lcom/miui/video/base/account/VideoMiAccountManager$ServiceTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager$5;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->exeServiceToken()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/account/VideoMiAccountManager$5$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/video/base/account/VideoMiAccountManager$5$1;-><init>(Lcom/miui/video/base/account/VideoMiAccountManager$5;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.class Lcom/miui/share/weibo/WeiboShareActivity$1;
.super Ljava/lang/Object;
.source "WeiboShareActivity.java"

# interfaces
.implements Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/share/weibo/WeiboShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/share/weibo/WeiboShareActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/share/weibo/WeiboShareActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/weibo/WeiboShareActivity$1;->this$0:Lcom/miui/share/weibo/WeiboShareActivity;

    iput-object p2, p0, Lcom/miui/share/weibo/WeiboShareActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const v0, 0x10003

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/share/ShareResultManager;->notifyShareResult(II)V

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboShareActivity$1;->this$0:Lcom/miui/share/weibo/WeiboShareActivity;

    invoke-virtual {v0}, Lcom/miui/share/weibo/WeiboShareActivity;->finish()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboShareActivity$1;->this$0:Lcom/miui/share/weibo/WeiboShareActivity;

    iget-object v1, p0, Lcom/miui/share/weibo/WeiboShareActivity$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/miui/share/weibo/WeiboShareActivity;->access$000(Lcom/miui/share/weibo/WeiboShareActivity;Landroid/content/Intent;)Z

    return-void
.end method

.method public onFail()V
    .locals 2

    const v0, 0x10003

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/share/ShareResultManager;->notifyShareResult(II)V

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboShareActivity$1;->this$0:Lcom/miui/share/weibo/WeiboShareActivity;

    invoke-virtual {v0}, Lcom/miui/share/weibo/WeiboShareActivity;->finish()V

    return-void
.end method

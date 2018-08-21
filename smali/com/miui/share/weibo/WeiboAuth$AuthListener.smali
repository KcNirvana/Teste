.class Lcom/miui/share/weibo/WeiboAuth$AuthListener;
.super Ljava/lang/Object;
.source "WeiboAuth.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/share/weibo/WeiboAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/share/weibo/WeiboAuth;


# direct methods
.method private constructor <init>(Lcom/miui/share/weibo/WeiboAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/weibo/WeiboAuth$AuthListener;->this$0:Lcom/miui/share/weibo/WeiboAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/share/weibo/WeiboAuth;Lcom/miui/share/weibo/WeiboAuth$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/share/weibo/WeiboAuth$AuthListener;-><init>(Lcom/miui/share/weibo/WeiboAuth;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string/jumbo v0, "MiuiShare"

    const-string/jumbo v1, "AuthListener.onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth$AuthListener;->this$0:Lcom/miui/share/weibo/WeiboAuth;

    invoke-static {v0}, Lcom/miui/share/weibo/WeiboAuth;->access$300(Lcom/miui/share/weibo/WeiboAuth;)Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth$AuthListener;->this$0:Lcom/miui/share/weibo/WeiboAuth;

    invoke-static {v0}, Lcom/miui/share/weibo/WeiboAuth;->access$300(Lcom/miui/share/weibo/WeiboAuth;)Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "MiuiShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AuthListener.onComplete - values - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth$AuthListener;->this$0:Lcom/miui/share/weibo/WeiboAuth;

    invoke-static {v0}, Lcom/miui/share/weibo/WeiboAuth;->access$100(Lcom/miui/share/weibo/WeiboAuth;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/share/weibo/WeiboAuth;->access$200(Landroid/content/Context;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth$AuthListener;->this$0:Lcom/miui/share/weibo/WeiboAuth;

    invoke-static {v0}, Lcom/miui/share/weibo/WeiboAuth;->access$300(Lcom/miui/share/weibo/WeiboAuth;)Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth$AuthListener;->this$0:Lcom/miui/share/weibo/WeiboAuth;

    invoke-static {v0}, Lcom/miui/share/weibo/WeiboAuth;->access$300(Lcom/miui/share/weibo/WeiboAuth;)Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;->onComplete()V

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3

    const-string/jumbo v0, "MiuiShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AuthListener.onWeiboException - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth$AuthListener;->this$0:Lcom/miui/share/weibo/WeiboAuth;

    invoke-static {v0}, Lcom/miui/share/weibo/WeiboAuth;->access$300(Lcom/miui/share/weibo/WeiboAuth;)Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth$AuthListener;->this$0:Lcom/miui/share/weibo/WeiboAuth;

    invoke-static {v0}, Lcom/miui/share/weibo/WeiboAuth;->access$300(Lcom/miui/share/weibo/WeiboAuth;)Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;->onFail()V

    :cond_0
    return-void
.end method

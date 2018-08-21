.class Lcom/miui/share/weibo/WeiboAuth$1;
.super Landroid/os/AsyncTask;
.source "WeiboAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/share/weibo/WeiboAuth;->buildSsoHandler(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sina/weibo/sdk/auth/sso/SsoHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/share/weibo/WeiboAuth;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;


# direct methods
.method constructor <init>(Lcom/miui/share/weibo/WeiboAuth;Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/weibo/WeiboAuth$1;->this$0:Lcom/miui/share/weibo/WeiboAuth;

    iput-object p2, p0, Lcom/miui/share/weibo/WeiboAuth$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/miui/share/weibo/WeiboAuth$1;->val$authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
    .locals 3

    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcom/miui/share/weibo/WeiboAuth$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/share/weibo/WeiboAuth$1;->val$authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/share/weibo/WeiboAuth$1;->doInBackground([Ljava/lang/Void;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth$1;->this$0:Lcom/miui/share/weibo/WeiboAuth;

    invoke-static {v0, p1}, Lcom/miui/share/weibo/WeiboAuth;->access$402(Lcom/miui/share/weibo/WeiboAuth;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth$1;->this$0:Lcom/miui/share/weibo/WeiboAuth;

    invoke-static {v0}, Lcom/miui/share/weibo/WeiboAuth;->access$400(Lcom/miui/share/weibo/WeiboAuth;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/share/weibo/WeiboAuth$1;->this$0:Lcom/miui/share/weibo/WeiboAuth;

    invoke-static {v1}, Lcom/miui/share/weibo/WeiboAuth;->access$500(Lcom/miui/share/weibo/WeiboAuth;)Lcom/miui/share/weibo/WeiboAuth$AuthListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {p0, p1}, Lcom/miui/share/weibo/WeiboAuth$1;->onPostExecute(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V

    return-void
.end method

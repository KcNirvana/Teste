.class Lcom/ali/user/mobile/h5/b;
.super Ljava/lang/Object;
.source "AliuserWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/h5/b;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/h5/b;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->access$202(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;Z)Z

    iget-object v0, p0, Lcom/ali/user/mobile/h5/b;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/h5/b;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->access$500(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->access$600(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;Ljava/lang/String;)V

    return-void
.end method

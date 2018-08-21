.class public interface abstract Lcom/ali/user/mobile/authlogin/a/a;
.super Ljava/lang/Object;
.source "IAlipaySSOAuthLoginAPI.java"


# virtual methods
.method public abstract a(Landroid/app/Activity;Lcom/ali/user/mobile/authlogin/a/c;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ali/user/mobile/authlogin/exception/ParamNullException;,
            Lcom/ali/user/mobile/authlogin/exception/PreAuthLoginException;
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Intent;Lcom/ali/user/mobile/authlogin/a/b;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ali/user/mobile/authlogin/exception/ParamNullException;
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Intent;)Z
.end method

.class public abstract Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginUICallback;
.super Ljava/lang/Object;
.source "MiPassportLoginFuture.java"

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PasswordLoginUICallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginFuture;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginUICallback;->call(Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginFuture;)V

    return-void
.end method

.method protected abstract call(Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginFuture;)V
.end method

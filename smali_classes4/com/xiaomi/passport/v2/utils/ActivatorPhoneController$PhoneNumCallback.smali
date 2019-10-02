.class public interface abstract Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;
.super Ljava/lang/Object;
.source "ActivatorPhoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneNumCallback"
.end annotation


# virtual methods
.method public abstract onDualSIM(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
.end method

.method public abstract onNone()V
.end method

.method public abstract onSingleSIM(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
.end method

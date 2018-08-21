.class public abstract Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;
.super Ljava/lang/Object;
.source "BaseExtService.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;->mContext:Landroid/content/Context;

    return-void
.end method

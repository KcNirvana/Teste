.class public abstract Lcom/alipay/rdssecuritysdk/a;
.super Ljava/lang/Object;
.source "RDSModelService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getRdsRequestMessage(Landroid/content/Context;Lcom/alipay/mobile/security/senative/APSE;)Ljava/lang/String;
.end method

.method public abstract onControlClick(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPageEnd()V
.end method

.method public abstract onTouchScreen(Ljava/lang/String;Ljava/lang/String;DD)V
.end method

.method public abstract reInit(Landroid/content/Context;Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract updateUser(Ljava/lang/String;)V
.end method

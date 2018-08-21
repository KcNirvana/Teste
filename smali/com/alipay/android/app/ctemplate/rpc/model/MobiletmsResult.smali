.class public Lcom/alipay/android/app/ctemplate/rpc/model/MobiletmsResult;
.super Ljava/lang/Object;
.source "MobiletmsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public message:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ctemplate/rpc/model/MobiletmsResult;->success:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/rpc/model/MobiletmsResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/rpc/model/MobiletmsResult;->message:Ljava/lang/String;

    return-void
.end method

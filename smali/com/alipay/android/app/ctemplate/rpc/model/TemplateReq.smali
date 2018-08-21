.class public Lcom/alipay/android/app/ctemplate/rpc/model/TemplateReq;
.super Ljava/lang/Object;
.source "TemplateReq.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public templateReqModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ctemplate/rpc/model/TemplateReqModel;",
            ">;"
        }
    .end annotation
.end field

.field public tplVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

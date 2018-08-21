.class public Lcom/ali/user/mobile/account/model/ToString;
.super Ljava/lang/Object;
.source "ToString.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isDisplaySensitiveField:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/account/model/ToString;->isDisplaySensitiveField:Z

    return-void
.end method

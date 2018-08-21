.class public Lorg/ifaa/ifaf/message/server/IFAFServerMessage;
.super Ljava/lang/Object;
.source "IFAFServerMessage.java"


# instance fields
.field private code:I

.field private errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/ifaa/ifaf/message/server/IFAFServerMessage;->code:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/server/IFAFServerMessage;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lorg/ifaa/ifaf/message/server/IFAFServerMessage;->code:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/server/IFAFServerMessage;->errorMessage:Ljava/lang/String;

    return-void
.end method

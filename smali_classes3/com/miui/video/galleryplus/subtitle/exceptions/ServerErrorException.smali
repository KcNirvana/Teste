.class public Lcom/miui/video/galleryplus/subtitle/exceptions/ServerErrorException;
.super Ljava/lang/Exception;
.source "ServerErrorException.java"


# static fields
.field private static final serialVersionUID:J = 0x6ca1773497b11872L


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/exceptions/ServerErrorException;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/exceptions/ServerErrorException;->errorCode:I

    iput-object p2, p0, Lcom/miui/video/galleryplus/subtitle/exceptions/ServerErrorException;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/subtitle/exceptions/ServerErrorException;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/exceptions/ServerErrorException;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/exceptions/ServerErrorException;->errorCode:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/exceptions/ServerErrorException;->errorMessage:Ljava/lang/String;

    return-void
.end method

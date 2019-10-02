.class public Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;
.super Ljava/lang/Exception;
.source "SNSLoginException.java"


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;->code:I

    return v0
.end method

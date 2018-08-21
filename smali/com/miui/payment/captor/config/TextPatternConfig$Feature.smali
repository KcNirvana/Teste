.class public Lcom/miui/payment/captor/config/TextPatternConfig$Feature;
.super Ljava/lang/Object;
.source "TextPatternConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/captor/config/TextPatternConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# instance fields
.field private contains:Ljava/lang/String;

.field private digits:Ljava/lang/String;

.field private maxLength:Ljava/lang/String;

.field private notContains:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContains()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfig$Feature;->contains:Ljava/lang/String;

    return-object v0
.end method

.method public getDigits()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfig$Feature;->digits:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxLength()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfig$Feature;->maxLength:Ljava/lang/String;

    return-object v0
.end method

.method public getNotContains()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfig$Feature;->notContains:Ljava/lang/String;

    return-object v0
.end method

.method public setContains(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPatternConfig$Feature;->contains:Ljava/lang/String;

    return-void
.end method

.method public setDigits(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPatternConfig$Feature;->digits:Ljava/lang/String;

    return-void
.end method

.method public setMaxLength(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPatternConfig$Feature;->maxLength:Ljava/lang/String;

    return-void
.end method

.method public setNotContains(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPatternConfig$Feature;->notContains:Ljava/lang/String;

    return-void
.end method

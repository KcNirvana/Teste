.class public Lcom/miui/video/base/statistics/session/CloudO2OEntity$RcItemsEntity$ExtEntity;
.super Ljava/lang/Object;
.source "CloudO2OEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/statistics/session/CloudO2OEntity$RcItemsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtEntity"
.end annotation


# instance fields
.field public duration:I

.field public language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity$RcItemsEntity$ExtEntity;->duration:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity$RcItemsEntity$ExtEntity;->language:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity$RcItemsEntity$ExtEntity;->duration:I

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity$RcItemsEntity$ExtEntity;->language:Ljava/lang/String;

    return-void
.end method

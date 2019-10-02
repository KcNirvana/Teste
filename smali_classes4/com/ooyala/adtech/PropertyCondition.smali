.class public Lcom/ooyala/adtech/PropertyCondition;
.super Lcom/ooyala/adtech/Condition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/PropertyCondition$Operator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field c:F

.field d:Lcom/ooyala/adtech/PropertyCondition$Operator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ooyala/adtech/Condition;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperator()Lcom/ooyala/adtech/PropertyCondition$Operator;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/PropertyCondition;->d:Lcom/ooyala/adtech/PropertyCondition$Operator;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/ooyala/adtech/PropertyCondition;->c:F

    return v0
.end method

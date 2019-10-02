.class public abstract Lcom/ooyala/adtech/Condition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/Condition$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Lcom/ooyala/adtech/Condition$Type;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Condition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Condition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/Condition;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/ooyala/adtech/Condition$Type;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Condition;->a:Lcom/ooyala/adtech/Condition$Type;

    return-object v0
.end method

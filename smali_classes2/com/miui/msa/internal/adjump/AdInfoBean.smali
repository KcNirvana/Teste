.class public Lcom/miui/msa/internal/adjump/AdInfoBean;
.super Ljava/lang/Object;
.source "AdInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;
    }
.end annotation


# instance fields
.field private adId:J

.field private downloadPackageName:Ljava/lang/String;

.field private dspName:Ljava/lang/String;

.field private landingPageUrl:Ljava/lang/String;

.field private targetType:I


# direct methods
.method private constructor <init>(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->access$000(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;)I

    move-result v0

    iput v0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean;->targetType:I

    invoke-static {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->access$100(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean;->adId:J

    invoke-static {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->access$200(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean;->landingPageUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->access$300(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean;->downloadPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->access$400(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/AdInfoBean;->dspName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;Lcom/miui/msa/internal/adjump/AdInfoBean$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;-><init>(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;)V

    return-void
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean;->adId:J

    return-wide v0
.end method

.method public getDownloadPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean;->downloadPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDspName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean;->dspName:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean;->landingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()I
    .locals 1

    iget v0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean;->targetType:I

    return v0
.end method

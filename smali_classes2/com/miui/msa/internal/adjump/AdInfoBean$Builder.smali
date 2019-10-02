.class public final Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;
.super Ljava/lang/Object;
.source "AdInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/internal/adjump/AdInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adId:J

.field private downloadPackageName:Ljava/lang/String;

.field private dspName:Ljava/lang/String;

.field private landingPageUrl:Ljava/lang/String;

.field private targetType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;)I
    .locals 0

    iget p0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->targetType:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->adId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->landingPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->downloadPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->dspName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/miui/msa/internal/adjump/AdInfoBean;
    .locals 2

    new-instance v0, Lcom/miui/msa/internal/adjump/AdInfoBean;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/msa/internal/adjump/AdInfoBean;-><init>(Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;Lcom/miui/msa/internal/adjump/AdInfoBean$1;)V

    return-object v0
.end method

.method public setAdId(J)Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->adId:J

    return-object p0
.end method

.method public setDownloadPackageName(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->downloadPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setDspName(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->dspName:Ljava/lang/String;

    return-object p0
.end method

.method public setLandingPageUrl(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->landingPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetType(I)Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->targetType:I

    return-object p0
.end method

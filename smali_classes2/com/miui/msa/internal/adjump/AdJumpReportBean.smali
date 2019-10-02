.class public Lcom/miui/msa/internal/adjump/AdJumpReportBean;
.super Ljava/lang/Object;
.source "AdJumpReportBean.java"


# instance fields
.field private mAdId:J

.field private mErrorDescription:Ljava/lang/String;

.field private mFinalUrl:Ljava/lang/String;

.field private mJumpCost:J

.field private mJumpCount:I

.field private mJumpDetail:Ljava/lang/String;

.field private mRet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build()Lcom/miui/msa/internal/adjump/AdJumpReportBean;
    .locals 1

    new-instance v0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    invoke-direct {v0}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mAdId:J

    return-wide v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mErrorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mFinalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJumpCost()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mJumpCost:J

    return-wide v0
.end method

.method public getJumpCount()I
    .locals 1

    iget v0, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mJumpCount:I

    return v0
.end method

.method public getJumpDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mJumpDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getRet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mRet:Ljava/lang/String;

    return-object v0
.end method

.method public setAdId(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;
    .locals 0

    iput-wide p1, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mAdId:J

    return-object p0
.end method

.method public setErrorDescription(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mErrorDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setFinalUrl(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mFinalUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setJumpCost(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;
    .locals 0

    iput-wide p1, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mJumpCost:J

    return-object p0
.end method

.method public setJumpCount(I)Lcom/miui/msa/internal/adjump/AdJumpReportBean;
    .locals 0

    iput p1, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mJumpCount:I

    return-object p0
.end method

.method public setJumpDetail(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mJumpDetail:Ljava/lang/String;

    return-object p0
.end method

.method public setRet(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->mRet:Ljava/lang/String;

    return-object p0
.end method

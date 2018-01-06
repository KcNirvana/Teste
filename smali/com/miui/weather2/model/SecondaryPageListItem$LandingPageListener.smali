.class public Lcom/miui/weather2/model/SecondaryPageListItem$LandingPageListener;
.super Lcom/miui/systemAdSolution/landingPage/LandingPageAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/SecondaryPageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LandingPageListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/model/SecondaryPageListItem;


# direct methods
.method protected constructor <init>(Lcom/miui/weather2/model/SecondaryPageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/SecondaryPageListItem$LandingPageListener;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem$LandingPageListener;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-virtual {v0}, Lcom/miui/weather2/model/SecondaryPageListItem;->i()V

    const-string v0, "Wth2:SecondaryPageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LandingPageListener.onDownloadStart() mDeepLinkInfo.mPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem$LandingPageListener;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-static {v2}, Lcom/miui/weather2/model/SecondaryPageListItem;->a(Lcom/miui/weather2/model/SecondaryPageListItem;)Lcom/miui/weather2/structures/DeepLinkInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/weather2/structures/DeepLinkInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mDeepLinkInfo.mDownloadUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem$LandingPageListener;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-static {v2}, Lcom/miui/weather2/model/SecondaryPageListItem;->a(Lcom/miui/weather2/model/SecondaryPageListItem;)Lcom/miui/weather2/structures/DeepLinkInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/weather2/structures/DeepLinkInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem$LandingPageListener;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-virtual {v0}, Lcom/miui/weather2/model/SecondaryPageListItem;->j()V

    const-string v0, "Wth2:SecondaryPageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LandingPageListener.onDownloadSuccess() mDeepLinkInfo.mPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem$LandingPageListener;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-static {v2}, Lcom/miui/weather2/model/SecondaryPageListItem;->a(Lcom/miui/weather2/model/SecondaryPageListItem;)Lcom/miui/weather2/structures/DeepLinkInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/weather2/structures/DeepLinkInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInstallSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem$LandingPageListener;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-virtual {v0}, Lcom/miui/weather2/model/SecondaryPageListItem;->k()V

    return-void
.end method

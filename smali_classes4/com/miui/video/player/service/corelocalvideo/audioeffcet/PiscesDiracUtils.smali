.class public Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;
.super Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;
.source "PiscesDiracUtils.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PiscesDiracUtils"

.field private static sHeadsetIdsAndTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

.field private mInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeadseIdsAndTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    const-string v1, "DIRACSOUND_HEADSET_EM001"

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;->isSupportType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    const-string v1, "DIRACSOUND_HEADSET_EM007"

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;->isSupportType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    const-string v1, "DIRACSOUND_HEADSET_HM004"

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;->isSupportType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    return-object v0
.end method

.method public getHeadsetType(Landroid/content/Context;)I
    .locals 0

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    invoke-virtual {p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;->getHeadsetType()I

    move-result p1

    return p1
.end method

.method public hasInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mInitialized:Z

    return v0
.end method

.method public initialize()V
    .locals 3

    const-string v0, "PiscesDiracUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize, mInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mInitialized:Z

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;-><init>(II)V

    iput-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PiscesDiracUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isEnabled(Landroid/content/Context;)Z
    .locals 2

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    invoke-virtual {p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;->getMovie()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public release()V
    .locals 3

    const-string v0, "PiscesDiracUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release, mInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public setEnabled(Landroid/content/Context;Z)V
    .locals 2

    const-string p1, "PiscesDiracUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set dirac enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;->setMovie(I)V

    :cond_0
    return-void
.end method

.method public setHeadsetType(Landroid/content/Context;I)V
    .locals 2

    const-string p1, "PiscesDiracUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set headset type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->isHeadsetType(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;->setHeadsetType(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad value, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHifiMode(I)V
    .locals 3

    const-string v0, "PiscesDiracUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set hifi mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;->setHifiMode(I)V

    :cond_0
    return-void
.end method

.method public setLevel(Landroid/content/Context;IF)V
    .locals 5

    const-string p1, "PiscesDiracUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set EQ Levle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diracband=%d;value=%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->formatStd(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;->setLevel(IF)V

    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 3

    const-string v0, "PiscesDiracUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set hifi mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;->mDiracSound:Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracSoundWrapper;->setMode(I)V

    :cond_0
    return-void
.end method

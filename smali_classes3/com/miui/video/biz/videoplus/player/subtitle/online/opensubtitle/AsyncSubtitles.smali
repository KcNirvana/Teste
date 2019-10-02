.class public Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;
.super Ljava/lang/Object;
.source "AsyncSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;,
        Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;,
        Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_DOWNLOAD_FAILED:I = -0x2

.field public static final ERROR_CODE_SEARCHSUB_FAILED:I = -0x1

.field public static final SESSION_TIMEOUT:J = 0xdbba0L


# instance fields
.field private mCallback:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;

.field private mDownTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLanguages:Ljava/lang/String;

.field private mOsa:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;

.field private mReq:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/ORequest;

.field public mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToken:Ljava/lang/String;

.field private mTokenTime:J


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mCallback:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;

    new-instance p1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;

    invoke-direct {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mOsa:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mOsa:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mCallback:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mTokenTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mTokenTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/ORequest;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mReq:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/ORequest;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mLanguages:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public downloadSubByIdToPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;-><init>(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mDownTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public getPossibleSubtitle()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mReq:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/ORequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;-><init>(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$GetSubList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mTask:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    return v0
.end method

.method public logoutOSA()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$1;-><init>(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setLanguagesArray([Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mLanguages:Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mLanguages:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mLanguages:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mLanguages:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mLanguages:Ljava/lang/String;

    return-void

    :cond_2
    :goto_1
    const-string p1, "all"

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mLanguages:Ljava/lang/String;

    return-void
.end method

.method public setNeededParamsToSearch(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/ORequest;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->mReq:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/ORequest;

    return-void
.end method

.class public Lorg/videolan/libvlc/util/MediaBrowser;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/util/MediaBrowser$EventListener;,
        Lorg/videolan/libvlc/util/MediaBrowser$Flag;
    }
.end annotation


# static fields
.field private static final IGNORE_LIST_OPTION:Ljava/lang/String; = ":ignore-filetypes="

.field private static final TAG:Ljava/lang/String; = "MediaBrowser"


# instance fields
.field private mAlive:Z

.field private mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

.field private final mBrowserMediaListEventListener:Lorg/videolan/libvlc/MediaList$EventListener;

.field private final mDiscovererMediaArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscovererMediaListEventListener:Lorg/videolan/libvlc/MediaList$EventListener;

.field private mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreList:Ljava/lang/String;

.field private final mLibVlc:Lorg/videolan/libvlc/LibVLC;

.field private mMedia:Lorg/videolan/libvlc/Media;

.field private final mMediaDiscoverers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/videolan/libvlc/MediaDiscoverer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Lorg/videolan/libvlc/util/MediaBrowser$EventListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    const-string v0, "db,nfo,ini,jpg,jpeg,ljpg,gif,png,pgm,pgmyuv,pbm,pam,tga,bmp,pnm,xpm,xcf,pcx,tif,tiff,lbm,sfv,txt,sub,idx,srt,ssa,ass,smi,utf,utf-8,rt,aqt,txt,usf,jss,cdg,psb,mpsub,mpl2,pjs,dks,stl,vtt,ttml"

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    new-instance v0, Lorg/videolan/libvlc/util/MediaBrowser$1;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/util/MediaBrowser$1;-><init>(Lorg/videolan/libvlc/util/MediaBrowser;)V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaListEventListener:Lorg/videolan/libvlc/MediaList$EventListener;

    new-instance v0, Lorg/videolan/libvlc/util/MediaBrowser$2;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/util/MediaBrowser$2;-><init>(Lorg/videolan/libvlc/util/MediaBrowser;)V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaListEventListener:Lorg/videolan/libvlc/MediaList$EventListener;

    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    iget-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {p1}, Lorg/videolan/libvlc/LibVLC;->retain()Z

    iput-object p2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mAlive:Z

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Lorg/videolan/libvlc/util/MediaBrowser$EventListener;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/util/MediaBrowser;-><init>(Lorg/videolan/libvlc/LibVLC;Lorg/videolan/libvlc/util/MediaBrowser$EventListener;)V

    iput-object p3, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;
    .locals 0

    iget-object p0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    return-object p0
.end method

.method static synthetic access$100(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method private reset()V
    .locals 2

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/MediaDiscoverer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaDiscoverer;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/Media;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    iput-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/Media;

    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->release()V

    iput-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    :cond_2
    return-void
.end method

.method private startMediaDiscoverer(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/videolan/libvlc/MediaDiscoverer;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/MediaDiscoverer;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaDiscoverer;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object p1

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaListEventListener:Lorg/videolan/libvlc/MediaList$EventListener;

    iget-object v2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2}, Lorg/videolan/libvlc/MediaList;->setEventListener(Lorg/videolan/libvlc/MediaList$EventListener;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaList;->release()V

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaDiscoverer;->start()Z

    return-void
.end method


# virtual methods
.method public browse(Landroid/net/Uri;I)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, p2}, Lorg/videolan/libvlc/util/MediaBrowser;->browse(Lorg/videolan/libvlc/Media;I)V

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    return-void
.end method

.method public browse(Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/videolan/libvlc/util/MediaBrowser;->browse(Lorg/videolan/libvlc/Media;I)V

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    return-void
.end method

.method public browse(Lorg/videolan/libvlc/Media;I)V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->retain()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":ignore-filetypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    const-string v0, ":no-sub-autodetect-file"

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    const-string v0, ":show-hiddenfiles"

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_2

    const/16 v0, 0x9

    :cond_2
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->subItems()Lorg/videolan/libvlc/MediaList;

    move-result-object p2

    iput-object p2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    iget-object p2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaListEventListener:Lorg/videolan/libvlc/MediaList$EventListener;

    iget-object v2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1, v2}, Lorg/videolan/libvlc/MediaList;->setEventListener(Lorg/videolan/libvlc/MediaList$EventListener;Landroid/os/Handler;)V

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/videolan/libvlc/Media;->parseAsync(II)Z

    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/Media;

    return-void
.end method

.method public changeEventListener(Lorg/videolan/libvlc/util/MediaBrowser$EventListener;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    return-void
.end method

.method public discoverNetworkShares()V
    .locals 7
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/videolan/libvlc/MediaDiscoverer;->list(Lorg/videolan/libvlc/LibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "MediaBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/videolan/libvlc/MediaDiscoverer$Description;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " discover ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/videolan/libvlc/MediaDiscoverer$Description;->longName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v3, Lorg/videolan/libvlc/MediaDiscoverer$Description;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/videolan/libvlc/util/MediaBrowser;->startMediaDiscoverer(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public discoverNetworkShares(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/util/MediaBrowser;->startMediaDiscoverer(Ljava/lang/String;)V

    return-void
.end method

.method public getMediaAt(I)Lorg/videolan/libvlc/Media;
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->getMediaCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaList;->getMediaAt(I)Lorg/videolan/libvlc/Media;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/videolan/libvlc/Media;

    :goto_0
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->retain()Z

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getMediaCount()I
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    iget-boolean v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mAlive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mAlive:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaBrowser released more than one time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIgnoreFileTypes(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    return-void
.end method

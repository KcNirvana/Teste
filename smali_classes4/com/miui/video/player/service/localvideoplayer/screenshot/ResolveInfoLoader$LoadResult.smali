.class Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;
.super Ljava/lang/Object;
.source "ResolveInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadResult"
.end annotation


# instance fields
.field final mIcon:Landroid/graphics/drawable/Drawable;

.field final mIsCustomIcon:Z

.field final mLabel:Ljava/lang/CharSequence;

.field mLoadingInfo:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;->mLabel:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;->mIsCustomIcon:Z

    return-void
.end method


# virtual methods
.method setLoadingInfo(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;)Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;->mLoadingInfo:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;

    return-object p0
.end method

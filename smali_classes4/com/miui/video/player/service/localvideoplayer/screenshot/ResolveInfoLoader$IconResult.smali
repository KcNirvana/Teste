.class Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$IconResult;
.super Ljava/lang/Object;
.source "ResolveInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconResult"
.end annotation


# instance fields
.field final drawable:Landroid/graphics/drawable/Drawable;

.field final isCustomIcon:Z

.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;


# direct methods
.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$IconResult;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$IconResult;->drawable:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$IconResult;->isCustomIcon:Z

    return-void
.end method

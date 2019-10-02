.class Lorg/videolan/libvlc/AWindow$SurfaceHelper;
.super Ljava/lang/Object;
.source "AWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceHelper"
.end annotation


# instance fields
.field private final mId:I

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private final mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lorg/videolan/libvlc/AWindow;


# direct methods
.method private constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    iput p2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    iput-object p4, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object p3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    iput p2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    iput-object p3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;)V

    return-void
.end method

.method private constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    iput p2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object p3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;)V

    return-void
.end method

.method static synthetic access$300(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static synthetic access$400(Lorg/videolan/libvlc/AWindow$SurfaceHelper;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private attachSurface()V
    .locals 2

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private attachSurfaceView()V
    .locals 2

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private attachTextureView()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    return-object v0
.end method

.method private releaseTextureView()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    iget v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow;->access$000(Lorg/videolan/libvlc/AWindow;I)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    iget-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    iget v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    invoke-static {p1, v0, v1}, Lorg/videolan/libvlc/AWindow;->access$100(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;)V

    iget-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {p1}, Lorg/videolan/libvlc/AWindow;->access$200(Lorg/videolan/libvlc/AWindow;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attachSurfaceView()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attachTextureView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attachSurface()V

    :goto_0
    return-void

    :cond_2
    const-string v0, "AWindow"

    const-string v1, "attach: IllegalStateException: object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    iget v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    invoke-static {v1, v2, v0}, Lorg/videolan/libvlc/AWindow;->access$100(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;)V

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->releaseTextureView()V

    return-void
.end method

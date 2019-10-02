.class Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;
.super Ljava/lang/Object;
.source "DialogAudioView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private mSelect:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;->mText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;->mText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;->mSelect:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$ViewHolder;->mSelect:Landroid/widget/ImageView;

    return-object p1
.end method

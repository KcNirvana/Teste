.class Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;
.super Ljava/lang/Object;
.source "DialogShareScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;
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

.method synthetic constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;->mText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;->mText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;->mSelect:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$ViewHolder;->mSelect:Landroid/widget/ImageView;

    return-object p1
.end method

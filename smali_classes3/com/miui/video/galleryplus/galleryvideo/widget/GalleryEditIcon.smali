.class public Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;
.super Landroid/widget/FrameLayout;
.source "GalleryEditIcon.java"


# static fields
.field public static final ICON_PIX:I


# instance fields
.field mIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$dimen;->dp_20:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->ICON_PIX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->mIcon:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->ICON_PIX:I

    sget v2, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->ICON_PIX:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryEditIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

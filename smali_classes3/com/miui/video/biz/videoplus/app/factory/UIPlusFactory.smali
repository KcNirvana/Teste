.class public Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;
.super Lcom/miui/video/common/feed/ui/UIStyle;
.source "UIPlusFactory.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;
.implements Lcom/miui/video/common/feed/IUIType;


# static fields
.field public static final LAYOUT_BOTTOM_CENTER_TEXT:I = 0x2

.field public static final LAYOUT_GALLERY_POSTER_FOUR_COLUMN:I = 0x4

.field public static final LAYOUT_GALLERY_POSTER_THREE_COLUMN:I = 0xe

.field public static final LAYOUT_GALLERY_POSTER_TWO_COLUMN:I = 0x3

.field public static final LAYOUT_GALLERY_TITLE:I = 0x1

.field public static final LAYOUT_IMAGE_TITLE_RAW_DOOR:I = 0x5

.field public static final LAYOUT_IMAGE_TITLE_RAW_DOOR_HIDE:I = 0x6

.field public static final LAYOUT_ITEM_DIVIDER:I = 0xc

.field public static final LAYOUT_LOADINGBAR:I = 0x0

.field public static final LAYOUT_MOMENT_ITEM_VIDEO:I = 0x9

.field public static final LAYOUT_MOMENT_ROW_ITEM_DATA:I = 0x7

.field public static final LAYOUT_MOMENT_ROW_ITEM_TITLE:I = 0xa

.field public static final LAYOUT_RECYCLER_VIEW_WITH_FLOAT_TITLE:I = 0x6

.field public static final LAYOUT_SEARCH_RESULT_TITLE:I = 0xd

.field public static final LAYOUT_VIDEO_POSTER_FOUR_COLUMN:I = 0xb

.field public static final LAYOUT_VIDEO_POSTER_THREE_COLUMN:I = 0xf

.field private static final TYPE_BOTTOM_CENTER_TEXT:Ljava/lang/String; = "bottom_center_text"

.field private static final TYPE_GALLERY_POSTER_FOUR_COLUMN:Ljava/lang/String; = "gallery_poster_four_column"

.field public static final TYPE_GALLERY_POSTER_THREE_COLUMN:Ljava/lang/String; = "gallery_poster_three_column"

.field private static final TYPE_GALLERY_POSTER_TWO_COLUMN:Ljava/lang/String; = "gallery_poster_two_column"

.field private static final TYPE_GALLERY_TITLE:Ljava/lang/String; = "gallery_title"

.field private static final TYPE_IMAGE_TITLE_RAW_DOOR:Ljava/lang/String; = "image_title_raw_door"

.field private static final TYPE_ITEM_DIVIDER:Ljava/lang/String; = "item_divider"

.field private static final TYPE_LOAD_MORE:Ljava/lang/String; = "load_more"

.field private static final TYPE_MOMENT_ITEM_TITLE:Ljava/lang/String; = "moment_item_title_small"

.field private static final TYPE_MOMENT_ITEM_VIDEO:Ljava/lang/String; = "moment_item_video"

.field protected static final TYPE_MOMENT_ROW_ITEM_DATA:Ljava/lang/String; = "moment_row_item_data"

.field private static final TYPE_RECYCLER_VIEW_WITH_FLOAT_TITLE:Ljava/lang/String; = "recycler_view_with_float_title"

.field private static final TYPE_SEARCH_RESULT_TITLE:Ljava/lang/String; = "search_result_title"

.field private static final TYPE_VIDEO_POSTER_FOUR_COLUMN:Ljava/lang/String; = "video_poster_four_column"

.field public static final TYPE_VIDEO_POSTER_THREE_COLUMN:Ljava/lang/String; = "VIDEO_POSTER_THREE_COLUMN"

.field public static UI_VIEW_TYPE:[I


# instance fields
.field private mUIRecyclerListener:Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->UI_VIEW_TYPE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/feed/ui/UIStyle;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/feed/ui/UIStyle;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->mUIRecyclerListener:Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;

    return-void
.end method


# virtual methods
.method public getUILayoutType(Ljava/lang/String;)I
    .locals 2

    const-string v0, "load_more"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "gallery_title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string v0, "bottom_center_text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const-string v0, "gallery_poster_two_column"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const-string v0, "gallery_poster_four_column"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    const-string v0, "image_title_raw_door"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    return p1

    :cond_5
    const-string v0, "recycler_view_with_float_title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x6

    return p1

    :cond_6
    const-string v0, "moment_row_item_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x7

    return p1

    :cond_7
    const-string v0, "moment_item_title_small"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0xa

    return p1

    :cond_8
    const-string v0, "moment_item_video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x9

    return p1

    :cond_9
    const-string v0, "item_divider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0xc

    return p1

    :cond_a
    const-string v0, "search_result_title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0xd

    return p1

    :cond_b
    const-string v0, "gallery_poster_three_column"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0xe

    return p1

    :cond_c
    const-string v0, "VIDEO_POSTER_THREE_COLUMN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0xf

    return p1

    :cond_d
    return v1
.end method

.method public getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->mUIRecyclerListener:Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->mUIRecyclerListener:Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->getStyle()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;->onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    if-nez p2, :cond_1

    new-instance v0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->getStyle()I

    move-result p2

    invoke-direct {v0, p1, p3, p2}, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p2, :cond_2

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIBottomCenterText;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->getStyle()I

    move-result p2

    invoke-direct {v0, p1, p3, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIBottomCenterText;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0xa

    if-ne v1, p2, :cond_3

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->getStyle()I

    move-result p2

    invoke-direct {v0, p1, p3, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    if-ne v1, p2, :cond_4

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryItemDivider;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->getStyle()I

    move-result p2

    invoke-direct {v0, p1, p3, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryItemDivider;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_4
    const/16 v1, 0xd

    if-ne v1, p2, :cond_5

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/UISearchResultTitle;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->getStyle()I

    move-result p2

    invoke-direct {v0, p1, p3, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISearchResultTitle;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method public getUIView(Landroid/content/Context;IILandroid/view/ViewGroup;)Lcom/miui/video/framework/base/ui/UIBase;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->UI_VIEW_TYPE:[I

    array-length v0, v0

    return v0
.end method

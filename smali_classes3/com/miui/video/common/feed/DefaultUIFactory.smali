.class public Lcom/miui/video/common/feed/DefaultUIFactory;
.super Lcom/miui/video/common/feed/BaseUIFactory;
.source "DefaultUIFactory.java"


# static fields
.field public static final LAYOUT_AD_CARD:I = 0x71

.field public static final LAYOUT_AUTHOR_DETAILS:I = 0x4c

.field public static final LAYOUT_AUTHOR_FILTER:I = 0x4d

.field public static final LAYOUT_CAROUSEL:I = 0x6f

.field public static final LAYOUT_DIVIDER_LINE:I = 0x1c

.field public static final LAYOUT_FLOAT_BUTTON:I = 0xc6

.field public static final LAYOUT_HORIZONTAL_AUTHOR:I = 0x4a

.field public static final LAYOUT_HORIZONTAL_LONG:I = 0x45

.field public static final LAYOUT_HORIZONTAL_SUBSCRIBED_AUTHOR_LIST:I = 0x49

.field public static final LAYOUT_HORIZONTAL_WIDE:I = 0x46

.field public static final LAYOUT_HORIZONTAL_WIDE_HISTORY:I = 0x47

.field public static final LAYOUT_INTERVAL_SPACE:I = 0x1b

.field public static final LAYOUT_ITEMS_FULL_IMAGE:I = 0x82

.field public static final LAYOUT_ITEM_LEFT_IMAGE:I = 0x83

.field public static final LAYOUT_LANGUAGE_ITEM:I = 0x44

.field public static final LAYOUT_LOADINGBAR:I = 0x0

.field public static final LAYOUT_LONG_VIDEO_DETAIL:I = 0x76

.field public static final LAYOUT_MIDDLE_FOUR_BUTTONS:I = 0x70

.field public static final LAYOUT_NORMAL_TEXT:I = 0x72

.field public static final LAYOUT_NORMAL_TEXT_AUTO:I = 0x73

.field public static final LAYOUT_NO_MORE:I = 0x1d

.field public static final LAYOUT_PLAYER_AUTO_PLAY:I = 0x77

.field public static final LAYOUT_RECOMMEND_AUTHOR:I = 0x4b

.field public static final LAYOUT_RECOMMEND_VIDEO:I = 0x3e

.field public static final LAYOUT_SUBSCRIBE_AUTHOR:I = 0x98

.field public static final LAYOUT_UPDATEBAR:I = 0xc7

.field public static final LAYOUT_VIDEOS_CONDITIONS:I = 0x7c

.field public static final LAYOUT_VIDEOS_DETAIL_ACTION:I = 0x97

.field public static final LAYOUT_VIDEOS_DOUBLE_VIDEOS:I = 0x7b

.field public static final LAYOUT_VIDEOS_EPISODE_RANGE:I = 0x7a

.field public static final LAYOUT_VIDEOS_HORIZONTAL_IMAGE:I = 0x75

.field public static final LAYOUT_VIDEOS_VERTICAL_IMAGE:I = 0x74

.field public static final LAYOUT_VIDEO_DETAIL:I = 0x96

.field public static final LAYOUT_VIDEO_GROUP:I = 0x66

.field public static final TYPE_AD_CARD:Ljava/lang/String; = "ad_card"

.field public static TYPE_AUTHOR_DETAILS:Ljava/lang/String; = "author_detail"

.field public static TYPE_AUTHOR_FILTER:Ljava/lang/String; = "left_text_right_filter"

.field public static final TYPE_CAROUSEL:Ljava/lang/String; = "carousel"

.field private static final TYPE_DIVIDER_LINE:Ljava/lang/String; = "divider_line"

.field public static final TYPE_FLOAT_BUTTON:Ljava/lang/String; = "suspended_ball"

.field public static final TYPE_HORIZONTAL_AUTHOR:Ljava/lang/String; = "authors_horizontal"

.field public static final TYPE_HORIZONTAL_LONG:Ljava/lang/String; = "horizontal_long"

.field public static final TYPE_HORIZONTAL_SUBSCRIBED_AUTHOR_LIST:Ljava/lang/String; = "subscribed_author_list"

.field public static final TYPE_HORIZONTAL_WIDE:Ljava/lang/String; = "horizontal_wide"

.field public static final TYPE_HORIZONTAL_WIDE_HISTORY:Ljava/lang/String; = "horizontal_wide_history"

.field private static final TYPE_INTERVAL_SPACE:Ljava/lang/String; = "interval_space"

.field public static final TYPE_ITEMS_FULL_IMAGE:Ljava/lang/String; = "items_full_image"

.field public static final TYPE_ITEM_LEFT_IMAGE:Ljava/lang/String; = "items_left_image"

.field public static final TYPE_LANGUAGE_ITEM:Ljava/lang/String; = "LANGUAGE_ITEM "

.field public static final TYPE_LIST_FULL_IMAGE:Ljava/lang/String; = "list_item_full"

.field public static final TYPE_LOAD_MORE:Ljava/lang/String; = "load_more"

.field public static final TYPE_LONG_VIDEO_DETAIL:Ljava/lang/String; = "long_video_detail"

.field public static final TYPE_MIDDLE_FOUR_BUTTONS:Ljava/lang/String; = "middle_four_buttons"

.field public static final TYPE_NORMAL_TEXT:Ljava/lang/String; = "normal_text"

.field public static final TYPE_NORMAL_TEXT_AUTO:Ljava/lang/String; = "normal_text_auto"

.field public static final TYPE_NO_MORE:Ljava/lang/String; = "no_more_content"

.field public static final TYPE_PLAYER_AUTO_PLAY:Ljava/lang/String; = "auto_play_text"

.field public static TYPE_RECOMMEND_AUTHOR:Ljava/lang/String; = "authors_recommend"

.field public static final TYPE_RECOMMEND_VIDEO:Ljava/lang/String; = "recommend_video"

.field public static final TYPE_SUBSCRIBE_AUTHOR:Ljava/lang/String; = "subscribe_author"

.field public static final TYPE_UPDATEBAR:Ljava/lang/String; = "updatebar"

.field public static final TYPE_VIDEOS_CONDITIONS:Ljava/lang/String; = "conditions"

.field public static final TYPE_VIDEOS_DETAIL_ACTION:Ljava/lang/String; = "four_icon"

.field public static final TYPE_VIDEOS_DOUBLE_VIDEOS:Ljava/lang/String; = "double_videos"

.field public static final TYPE_VIDEOS_EPISODE_RANGE:Ljava/lang/String; = "episode_range"

.field public static final TYPE_VIDEOS_HORIZONTAL_IMAGE:Ljava/lang/String; = "videos_horizontal_image"

.field public static final TYPE_VIDEOS_VERTICAL_IMAGE:Ljava/lang/String; = "videos_vertical_image"

.field public static final TYPE_VIDEO_DETAIL:Ljava/lang/String; = "video_detail"

.field public static final TYPE_VIDEO_GROUP:Ljava/lang/String; = "video_group"


# instance fields
.field protected mUIRecyclerListener:Lcom/miui/video/common/feed/IUIRecyclerCreateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/feed/BaseUIFactory;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/common/feed/IUIRecyclerCreateListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/feed/BaseUIFactory;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/DefaultUIFactory;->mUIRecyclerListener:Lcom/miui/video/common/feed/IUIRecyclerCreateListener;

    return-void
.end method


# virtual methods
.method public getUILayoutType(Ljava/lang/String;)I
    .locals 3

    const-string v0, "load_more"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "carousel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x6f

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_1
    const-string v0, "middle_four_buttons"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x70

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_2
    const-string v0, "ad_card"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x71

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_3
    const-string v0, "normal_text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x72

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_4
    const-string v0, "normal_text_auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x73

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_5
    const-string v0, "videos_horizontal_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x75

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_6
    const-string v0, "videos_vertical_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0x74

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_7
    const-string v0, "episode_range"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x7a

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_8
    const-string v0, "double_videos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x7b

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_9
    const-string v0, "conditions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0x7c

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_a
    const-string v0, "horizontal_wide_history"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0x47

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_b
    const-string v0, "authors_horizontal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0x4a

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_c
    const-string v0, "interval_space"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p1, 0x1b

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_d
    const-string v0, "divider_line"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p1, 0x1c

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_e
    const-string v0, "no_more_content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p1, 0x1d

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_f
    const-string v0, "long_video_detail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p1, 0x76

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_10
    const-string v0, "auto_play_text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 p1, 0x77

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_11
    const-string v0, "video_detail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 p1, 0x96

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_12
    const-string v0, "four_icon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p1, 0x97

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_13
    const-string v0, "subscribe_author"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 p1, 0x98

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_14
    const-string v0, "items_full_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x82

    if-eqz v0, :cond_15

    invoke-virtual {p0, v2}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_15
    const-string v0, "items_left_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 p1, 0x83

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_16
    const-string v0, "list_item_full"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, v2}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_17
    const-string v0, "subscribed_author_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 p1, 0x49

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_18
    sget-object v0, Lcom/miui/video/common/feed/DefaultUIFactory;->TYPE_RECOMMEND_AUTHOR:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 p1, 0x4b

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_19
    sget-object v0, Lcom/miui/video/common/feed/DefaultUIFactory;->TYPE_AUTHOR_DETAILS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 p1, 0x4c

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_1a
    sget-object v0, Lcom/miui/video/common/feed/DefaultUIFactory;->TYPE_AUTHOR_FILTER:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 p1, 0x4d

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_1b
    const-string v0, "suspended_ball"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/16 p1, 0xc6

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    return p1

    :cond_1c
    return v1
.end method

.method public getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/miui/video/common/feed/DefaultUIFactory;->retriveLayoutType(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/common/feed/DefaultUIFactory;->mUIRecyclerListener:Lcom/miui/video/common/feed/IUIRecyclerCreateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/common/feed/DefaultUIFactory;->mUIRecyclerListener:Lcom/miui/video/common/feed/IUIRecyclerCreateListener;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result v2

    invoke-interface {v1, p1, v0, p3, v2}, Lcom/miui/video/common/feed/IUIRecyclerCreateListener;->onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    const/16 v2, 0x47

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/common/feed/BaseUIFactory;->getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_0
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto/16 :goto_1

    :pswitch_2
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto/16 :goto_1

    :pswitch_4
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto/16 :goto_1

    :pswitch_5
    new-instance v1, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto/16 :goto_1

    :pswitch_6
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :pswitch_7
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :pswitch_8
    new-instance v1, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :pswitch_9
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :pswitch_a
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :pswitch_b
    new-instance v1, Lcom/miui/video/common/feed/ui/UiMiddleButtonItem;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/UiMiddleButtonItem;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :pswitch_c
    new-instance v1, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :pswitch_d
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardNoMore;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/card/UICardNoMore;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :pswitch_e
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardDividerLine;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/card/UICardDividerLine;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :pswitch_f
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardSpace;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/card/UICardSpace;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_1
    :pswitch_10
    new-instance v1, Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;->getStyle()I

    move-result p2

    invoke-direct {v1, p1, p3, p2}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    :cond_2
    :goto_1
    :pswitch_11
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6f
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7a
        :pswitch_11
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x82
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x96
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUIView(Landroid/content/Context;IILandroid/view/ViewGroup;)Lcom/miui/video/framework/base/ui/UIBase;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setStyle(I)V
    .locals 0

    return-void
.end method

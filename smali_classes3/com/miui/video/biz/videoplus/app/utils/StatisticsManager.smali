.class public Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager$Holder;
    }
.end annotation


# static fields
.field private static final CATEGORY_PLUS:Ljava/lang/String; = "video_plus"

.field private static final CHANGE_ARRAY_IN_FOLDER_LOCAL:Ljava/lang/String; = "change_array_in_folder_local"

.field private static final CHANGE_SHOWRANGE_LOCAL:Ljava/lang/String; = "change_showrange_local"

.field private static final CHANNEL_TAB_CLICK_LOCAL:Ljava/lang/String; = "channel_tab_click_local"

.field private static final DELETE_IN_FOLDER_LOCAL:Ljava/lang/String; = "delete_in_folder_local"

.field private static final DELETE_IN_TIMELINE_LOCAL:Ljava/lang/String; = "delete_in_timeline_local"

.field private static final EDIT_IN_FOLDER_LOCAL:Ljava/lang/String; = "edit_in_folder_local"

.field private static final EDIT_IN_TIMELINE_LOCAL:Ljava/lang/String; = "edit_in_timeline_local"

.field private static final ENTER_FOLDER_LOCAL:Ljava/lang/String; = "enter_folder_local"

.field private static final FEEDBACK_LOCAL:Ljava/lang/String; = "feedback_local"

.field private static final FILE_SORT_CLICK:Ljava/lang/String; = "file_sort_click_local"

.field private static final FOLDER_SORT_CLICK:Ljava/lang/String; = "folder_sort_click_local"

.field private static final FOLDER_SORT_DOOR_CLICK:Ljava/lang/String; = "folder_sort_door_click_local"

.field private static final FOLDER_SORT_DOOR_VIEW:Ljava/lang/String; = "folder_sort_door_view_local"

.field private static final HIDE_ITEM_SHAREPAGE_LOCAL:Ljava/lang/String; = "hide_item_sharepage_local"

.field private static final HIDE_ITEM_SUCCESS_LOCAL:Ljava/lang/String; = "hide_item_success_local"

.field private static final LAUNCH_FROM:Ljava/lang/String; = "launch_from"

.field private static final MAIN_TAB_CLICK_LOCAL:Ljava/lang/String; = "main_tab_click_local"

.field private static final MORE_CLICK:Ljava/lang/String; = "setting_local"

.field public static final NUM_0:Ljava/lang/String; = "0"

.field public static final NUM_1:Ljava/lang/String; = "1"

.field public static final NUM_2:Ljava/lang/String; = "2"

.field public static final NUM_3:Ljava/lang/String; = "3"

.field public static final NUM_4:Ljava/lang/String; = "4"

.field private static final OPEN_DEVICE_LIST_SHAREPAGE_LOCAL:Ljava/lang/String; = "open_device_list_sharepage_local"

.field private static final PLUS:Ljava/lang/String; = "plus."

.field private static final POSTER_CLICK:Ljava/lang/String; = "poster_click_local"

.field private static final POSTER_SETTING:Ljava/lang/String; = "poster_setting_local"

.field private static final POSTER_SETTING_SUCC:Ljava/lang/String; = "poster_setting_succ_local"

.field private static final SCREEN_ON_TV_PLAYER_LOCAL:Ljava/lang/String; = "screen_on_tv_player_local"

.field private static final SEARCH_EVENT:Ljava/lang/String; = "search_event_local"

.field private static final SEARCH_LOCAL:Ljava/lang/String; = "search_local"

.field private static final SEARCH_RESULT_CLICK_LOCAL:Ljava/lang/String; = "search_result_click_local"

.field private static final SEARCH_RESULT_SHOW_LOCAL:Ljava/lang/String; = "search_result_show_local"

.field private static final SEARCH_START_LOCAL:Ljava/lang/String; = "search_start_local"

.field private static final SHARE_IN_FOLDER_LOCAL:Ljava/lang/String; = "share_in_folder_local"

.field private static final SHARE_IN_TIMELINE_LOCAL:Ljava/lang/String; = "share_in_timeline_local"

.field private static final SHARE_ITEM_LOCAL:Ljava/lang/String; = "share_item_local"

.field private static final SHORTCUT_CLICK:Ljava/lang/String; = "shortcut_click_local"

.field private static final START_LOCAL:Ljava/lang/String; = "start_local"

.field private static final TAG:Ljava/lang/String; = "StatisticsManager"

.field public static sCurrentTab:Ljava/lang/String; = "1"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plus."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager$Holder;->access$000()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    return-object v0
.end method

.method private recordDevPlatformEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "miui"

    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->getMIUIVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/AppUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version.incremental"

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version.release"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hour_of_day"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "video_plus"

    const-wide/16 v1, 0x1

    invoke-static {v0, p1, v1, v2, p2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->trackMiDev(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method private recordSortTypeClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ret_state"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, ""

    invoke-static {p1, p2, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public recordChangeArrayInFolderLocal(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "change_after"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "change_array_in_folder_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordChangeShowrangeLocal(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "change_after"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "change_showrange_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordChannelTabClickLocal(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "channel_tab"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "channel_tab_click_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordEditInFolderLocal()V
    .locals 1

    const-string v0, "edit_in_folder_local"

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordEventNoParams(Ljava/lang/String;)V

    return-void
.end method

.method public recordEnterFolderLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "enter_folder_local"

    invoke-static {p2, p1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordEventNoParams(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordFeedback(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "feedback_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordFileSortTypeClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "file_sort_click_local"

    invoke-direct {p0, v0, p1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordSortTypeClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordFolderEnterDelete()V
    .locals 1

    const-string v0, "delete_in_folder_local"

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordEventNoParams(Ljava/lang/String;)V

    return-void
.end method

.method public recordFolderEnterShare()V
    .locals 1

    const-string v0, "share_in_folder_local"

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordEventNoParams(Ljava/lang/String;)V

    return-void
.end method

.method public recordFolderSortClicked()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "folder_sort_door_click_local"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordFolderSortTypeClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "folder_sort_click_local"

    invoke-direct {p0, v0, p1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordSortTypeClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordFolderSortView()V
    .locals 0

    return-void
.end method

.method public recordHideItemSharepageLocal(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "hide_item_sharepage_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordHideItemSuccessLocal(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "hide_item_success_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordLaunchFrom(Landroid/content/Intent;I)V
    .locals 1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "start_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "start_local"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordMainTabClickLocal(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "main_tab"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "main_tab_click_local"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sput-object p1, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->sCurrentTab:Ljava/lang/String;

    return-void
.end method

.method public recordOpenDeviceListSharepageLocal(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "open_device_list_sharepage_local"

    invoke-static {v1, p1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordPosterClicked()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "poster_click_local"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordPosterSetting(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "poster_setting_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordPosterSettingSucc(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "poster_setting_succ_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordSearchEvent()V
    .locals 1

    const-string v0, "search_event_local"

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordEventNoParams(Ljava/lang/String;)V

    return-void
.end method

.method public recordSearchLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "is_success"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "search_local"

    const-string p2, ""

    invoke-static {p1, p2, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordSearchResultClickLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "query_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "search_result_click_local"

    const-string p2, ""

    invoke-static {p1, p2, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordSearchResultShowLocal(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "query_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "search_result_show_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordSearchStartLocal(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "search_start_local"

    invoke-static {v1, p1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordShareItemLocal(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "channel_tab"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "share_item_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordTimeLineEnterDelete(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "channel_tab"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "delete_in_timeline_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordTimeLineEnterEditMode(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "channel_tab"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "edit_in_timeline_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public recordTimeLineEnterShare(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "channel_tab"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "share_in_timeline_local"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

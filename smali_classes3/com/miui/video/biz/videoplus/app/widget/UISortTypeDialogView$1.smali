.class synthetic Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView$1;
.super Ljava/lang/Object;
.source "UISortTypeDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$video$biz$videoplus$app$interfaces$ISortOnCallbackListener$SortType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->values()[Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView$1;->$SwitchMap$com$miui$video$biz$videoplus$app$interfaces$ISortOnCallbackListener$SortType:[I

    :try_start_0
    sget-object v0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView$1;->$SwitchMap$com$miui$video$biz$videoplus$app$interfaces$ISortOnCallbackListener$SortType:[I

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView$1;->$SwitchMap$com$miui$video$biz$videoplus$app$interfaces$ISortOnCallbackListener$SortType:[I

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView$1;->$SwitchMap$com$miui$video$biz$videoplus$app$interfaces$ISortOnCallbackListener$SortType:[I

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->NONE:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

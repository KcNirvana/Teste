.class synthetic Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$7;
.super Ljava/lang/Object;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$video$biz$videoplus$db$core$loader$SyncMediaService$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->values()[Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$7;->$SwitchMap$com$miui$video$biz$videoplus$db$core$loader$SyncMediaService$Type:[I

    :try_start_0
    sget-object v0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$7;->$SwitchMap$com$miui$video$biz$videoplus$db$core$loader$SyncMediaService$Type:[I

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->LOAD_COMPLETED:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

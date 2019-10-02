.class synthetic Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$9;
.super Ljava/lang/Object;
.source "VideoPlusMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$video$biz$videoplus$app$listener$AppBarLayoutStateListener$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->values()[Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$9;->$SwitchMap$com$miui$video$biz$videoplus$app$listener$AppBarLayoutStateListener$State:[I

    :try_start_0
    sget-object v0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$9;->$SwitchMap$com$miui$video$biz$videoplus$app$listener$AppBarLayoutStateListener$State:[I

    sget-object v1, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->EXPANDED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$9;->$SwitchMap$com$miui$video$biz$videoplus$app$listener$AppBarLayoutStateListener$State:[I

    sget-object v1, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->COLLAPSED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

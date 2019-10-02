.class public final enum Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;
.super Ljava/lang/Enum;
.source "PlayerMoreDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RootViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

.field public static final enum SETTING:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

.field public static final enum SHARE_SCREEN:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    const-string v1, "SETTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;->SETTING:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    const-string v1, "SHARE_SCREEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;->SHARE_SCREEN:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    sget-object v1, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;->SETTING:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;->SHARE_SCREEN:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;->$VALUES:[Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;
    .locals 1

    const-class v0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;->$VALUES:[Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    invoke-virtual {v0}, [Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    return-object v0
.end method

.class public final enum Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;
.super Ljava/lang/Enum;
.source "UIPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

.field public static final enum CHECK_PASSWORD:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

.field public static final enum SET_PASSWORD:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    const-string v1, "SET_PASSWORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;->SET_PASSWORD:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    new-instance v0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    const-string v1, "CHECK_PASSWORD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;->CHECK_PASSWORD:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    sget-object v1, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;->SET_PASSWORD:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;->CHECK_PASSWORD:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;->$VALUES:[Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;
    .locals 1

    const-class v0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;->$VALUES:[Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    invoke-virtual {v0}, [Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    return-object v0
.end method

.class public final enum Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;
.super Ljava/lang/Enum;
.source "UIViewSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/widget/ui/UIViewSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

.field public static final enum EMPTY_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

.field public static final enum ERROR_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

.field public static final enum LOADING_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

.field public static final enum MAIN_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

.field public static final enum OFFLINE_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    const-string v1, "MAIN_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->MAIN_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    new-instance v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    const-string v1, "LOADING_VIEW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->LOADING_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    new-instance v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    const-string v1, "ERROR_VIEW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->ERROR_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    new-instance v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    const-string v1, "EMPTY_VIEW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    new-instance v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    const-string v1, "OFFLINE_VIEW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->OFFLINE_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->MAIN_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->LOADING_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->ERROR_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->OFFLINE_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->$VALUES:[Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;
    .locals 1

    const-class v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;
    .locals 1

    sget-object v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->$VALUES:[Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    invoke-virtual {v0}, [Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    return-object v0
.end method

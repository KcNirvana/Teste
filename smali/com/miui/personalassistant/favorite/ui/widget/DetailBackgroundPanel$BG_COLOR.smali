.class public final enum Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;
.super Ljava/lang/Enum;
.source "DetailBackgroundPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BG_COLOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

.field public static final enum black:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

.field public static final enum green:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

.field public static final enum white:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

.field public static final enum yellow:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    const-string/jumbo v1, "white"

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->white:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    new-instance v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    const-string/jumbo v1, "yellow"

    invoke-direct {v0, v1, v3}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->yellow:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    new-instance v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    const-string/jumbo v1, "green"

    invoke-direct {v0, v1, v4}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->green:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    new-instance v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    const-string/jumbo v1, "black"

    invoke-direct {v0, v1, v5}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->black:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    sget-object v1, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->white:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->yellow:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->green:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->black:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->$VALUES:[Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;
    .locals 1

    const-class v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    return-object v0
.end method

.method public static values()[Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->$VALUES:[Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, [Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    return-object v0
.end method

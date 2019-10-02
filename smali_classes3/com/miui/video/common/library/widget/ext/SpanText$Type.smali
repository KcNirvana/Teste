.class public final enum Lcom/miui/video/common/library/widget/ext/SpanText$Type;
.super Ljava/lang/Enum;
.source "SpanText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/widget/ext/SpanText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/common/library/widget/ext/SpanText$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/common/library/widget/ext/SpanText$Type;

.field public static final enum HIDE_STRIKETHROUGH:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

.field public static final enum HIDE_UNDERLINE:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

.field public static final enum SHOW_GEO:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

.field public static final enum SHOW_HTTP:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

.field public static final enum SHOW_MAIL:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

.field public static final enum SHOW_MMS:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

.field public static final enum SHOW_SMS:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

.field public static final enum SHOW_STRIKETHROUGH:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

.field public static final enum SHOW_TEL:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

.field public static final enum SHOW_UNDERLINE:Lcom/miui/video/common/library/widget/ext/SpanText$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    const-string v1, "SHOW_UNDERLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/common/library/widget/ext/SpanText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_UNDERLINE:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    new-instance v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    const-string v1, "HIDE_UNDERLINE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/common/library/widget/ext/SpanText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->HIDE_UNDERLINE:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    new-instance v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    const-string v1, "SHOW_STRIKETHROUGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/video/common/library/widget/ext/SpanText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_STRIKETHROUGH:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    new-instance v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    const-string v1, "HIDE_STRIKETHROUGH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/video/common/library/widget/ext/SpanText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->HIDE_STRIKETHROUGH:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    new-instance v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    const-string v1, "SHOW_HTTP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/video/common/library/widget/ext/SpanText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_HTTP:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    new-instance v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    const-string v1, "SHOW_TEL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/video/common/library/widget/ext/SpanText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_TEL:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    new-instance v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    const-string v1, "SHOW_MAIL"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/miui/video/common/library/widget/ext/SpanText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_MAIL:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    new-instance v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    const-string v1, "SHOW_SMS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/miui/video/common/library/widget/ext/SpanText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_SMS:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    new-instance v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    const-string v1, "SHOW_MMS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/miui/video/common/library/widget/ext/SpanText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_MMS:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    new-instance v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    const-string v1, "SHOW_GEO"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/miui/video/common/library/widget/ext/SpanText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_GEO:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    sget-object v1, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_UNDERLINE:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->HIDE_UNDERLINE:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_STRIKETHROUGH:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->HIDE_STRIKETHROUGH:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_HTTP:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_TEL:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_MAIL:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_SMS:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_MMS:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->SHOW_GEO:Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    aput-object v1, v0, v11

    sput-object v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->$VALUES:[Lcom/miui/video/common/library/widget/ext/SpanText$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/common/library/widget/ext/SpanText$Type;
    .locals 1

    const-class v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/common/library/widget/ext/SpanText$Type;
    .locals 1

    sget-object v0, Lcom/miui/video/common/library/widget/ext/SpanText$Type;->$VALUES:[Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    invoke-virtual {v0}, [Lcom/miui/video/common/library/widget/ext/SpanText$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/common/library/widget/ext/SpanText$Type;

    return-object v0
.end method

.class public final enum Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/LinearCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SkipButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFTER_FIRST_COMPLETION:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

.field public static final enum ALWAYS:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

.field public static final enum NEVER:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

.field private static final synthetic a:[Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->NEVER:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    new-instance v0, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    const-string v1, "ALWAYS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->ALWAYS:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    new-instance v0, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    const-string v1, "AFTER_FIRST_COMPLETION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->AFTER_FIRST_COMPLETION:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    sget-object v1, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->NEVER:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->ALWAYS:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->AFTER_FIRST_COMPLETION:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->a:[Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;
    .locals 1

    const-class v0, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->a:[Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    invoke-virtual {v0}, [Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    return-object v0
.end method

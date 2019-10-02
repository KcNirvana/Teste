.class public final enum Lcom/kaltura/playkit/PKLog$Level;
.super Ljava/lang/Enum;
.source "PKLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PKLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/PKLog$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/PKLog$Level;

.field public static final enum debug:Lcom/kaltura/playkit/PKLog$Level;

.field public static final enum error:Lcom/kaltura/playkit/PKLog$Level;

.field public static final enum info:Lcom/kaltura/playkit/PKLog$Level;

.field public static final enum off:Lcom/kaltura/playkit/PKLog$Level;

.field public static final enum verbose:Lcom/kaltura/playkit/PKLog$Level;

.field public static final enum warn:Lcom/kaltura/playkit/PKLog$Level;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/kaltura/playkit/PKLog$Level;

    const-string v1, "verbose"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/kaltura/playkit/PKLog$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/PKLog$Level;->verbose:Lcom/kaltura/playkit/PKLog$Level;

    new-instance v0, Lcom/kaltura/playkit/PKLog$Level;

    const-string v1, "debug"

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/kaltura/playkit/PKLog$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/PKLog$Level;->debug:Lcom/kaltura/playkit/PKLog$Level;

    new-instance v0, Lcom/kaltura/playkit/PKLog$Level;

    const-string v1, "info"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v3, v6}, Lcom/kaltura/playkit/PKLog$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/PKLog$Level;->info:Lcom/kaltura/playkit/PKLog$Level;

    new-instance v0, Lcom/kaltura/playkit/PKLog$Level;

    const-string v1, "warn"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v5, v7}, Lcom/kaltura/playkit/PKLog$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/PKLog$Level;->warn:Lcom/kaltura/playkit/PKLog$Level;

    new-instance v0, Lcom/kaltura/playkit/PKLog$Level;

    const-string v1, "error"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v6, v8}, Lcom/kaltura/playkit/PKLog$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/PKLog$Level;->error:Lcom/kaltura/playkit/PKLog$Level;

    new-instance v0, Lcom/kaltura/playkit/PKLog$Level;

    const-string v1, "off"

    const v9, 0x7fffffff

    invoke-direct {v0, v1, v7, v9}, Lcom/kaltura/playkit/PKLog$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/PKLog$Level;->off:Lcom/kaltura/playkit/PKLog$Level;

    new-array v0, v8, [Lcom/kaltura/playkit/PKLog$Level;

    sget-object v1, Lcom/kaltura/playkit/PKLog$Level;->verbose:Lcom/kaltura/playkit/PKLog$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PKLog$Level;->debug:Lcom/kaltura/playkit/PKLog$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/PKLog$Level;->info:Lcom/kaltura/playkit/PKLog$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/PKLog$Level;->warn:Lcom/kaltura/playkit/PKLog$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaltura/playkit/PKLog$Level;->error:Lcom/kaltura/playkit/PKLog$Level;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaltura/playkit/PKLog$Level;->off:Lcom/kaltura/playkit/PKLog$Level;

    aput-object v1, v0, v7

    sput-object v0, Lcom/kaltura/playkit/PKLog$Level;->$VALUES:[Lcom/kaltura/playkit/PKLog$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kaltura/playkit/PKLog$Level;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog$Level;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/PKLog$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/PKLog$Level;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/PKLog$Level;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PKLog$Level;->$VALUES:[Lcom/kaltura/playkit/PKLog$Level;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/PKLog$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/PKLog$Level;

    return-object v0
.end method

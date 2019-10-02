.class final enum Lcom/ooyala/pulse/j$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/pulse/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/pulse/j$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ooyala/pulse/j$b;

.field public static final enum b:Lcom/ooyala/pulse/j$b;

.field public static final enum c:Lcom/ooyala/pulse/j$b;

.field public static final enum d:Lcom/ooyala/pulse/j$b;

.field public static final enum e:Lcom/ooyala/pulse/j$b;

.field public static final enum f:Lcom/ooyala/pulse/j$b;

.field public static final enum g:Lcom/ooyala/pulse/j$b;

.field private static final synthetic h:[Lcom/ooyala/pulse/j$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ooyala/pulse/j$b;

    const-string v1, "ManagedSessionStateBeforeStart"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ooyala/pulse/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/j$b;->a:Lcom/ooyala/pulse/j$b;

    new-instance v0, Lcom/ooyala/pulse/j$b;

    const-string v1, "ManagedSessionStateWaiting"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ooyala/pulse/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/j$b;->b:Lcom/ooyala/pulse/j$b;

    new-instance v0, Lcom/ooyala/pulse/j$b;

    const-string v1, "ManagedSessionStateBeforeContentPlayback"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ooyala/pulse/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/j$b;->c:Lcom/ooyala/pulse/j$b;

    new-instance v0, Lcom/ooyala/pulse/j$b;

    const-string v1, "ManagedSessionStateDuringContentPlayback"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ooyala/pulse/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/j$b;->d:Lcom/ooyala/pulse/j$b;

    new-instance v0, Lcom/ooyala/pulse/j$b;

    const-string v1, "ManagedSessionStateDuringContentPause"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ooyala/pulse/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/j$b;->e:Lcom/ooyala/pulse/j$b;

    new-instance v0, Lcom/ooyala/pulse/j$b;

    const-string v1, "ManagedSessionStateDuringAdBreak"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ooyala/pulse/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/j$b;->f:Lcom/ooyala/pulse/j$b;

    new-instance v0, Lcom/ooyala/pulse/j$b;

    const-string v1, "ManagedSessionStateDone"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ooyala/pulse/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/j$b;->g:Lcom/ooyala/pulse/j$b;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ooyala/pulse/j$b;

    sget-object v1, Lcom/ooyala/pulse/j$b;->a:Lcom/ooyala/pulse/j$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/pulse/j$b;->b:Lcom/ooyala/pulse/j$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/pulse/j$b;->c:Lcom/ooyala/pulse/j$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ooyala/pulse/j$b;->d:Lcom/ooyala/pulse/j$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ooyala/pulse/j$b;->e:Lcom/ooyala/pulse/j$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ooyala/pulse/j$b;->f:Lcom/ooyala/pulse/j$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ooyala/pulse/j$b;->g:Lcom/ooyala/pulse/j$b;

    aput-object v1, v0, v8

    sput-object v0, Lcom/ooyala/pulse/j$b;->h:[Lcom/ooyala/pulse/j$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/pulse/j$b;
    .locals 1

    const-class v0, Lcom/ooyala/pulse/j$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/pulse/j$b;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/pulse/j$b;
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/j$b;->h:[Lcom/ooyala/pulse/j$b;

    invoke-virtual {v0}, [Lcom/ooyala/pulse/j$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/pulse/j$b;

    return-object v0
.end method

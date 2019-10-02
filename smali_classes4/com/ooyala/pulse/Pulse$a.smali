.class final Lcom/ooyala/pulse/Pulse$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/pulse/Pulse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/ooyala/pulse/Pulse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ooyala/pulse/Pulse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ooyala/pulse/Pulse;-><init>(B)V

    sput-object v0, Lcom/ooyala/pulse/Pulse$a;->a:Lcom/ooyala/pulse/Pulse;

    return-void
.end method

.method static synthetic a()Lcom/ooyala/pulse/Pulse;
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/Pulse$a;->a:Lcom/ooyala/pulse/Pulse;

    return-object v0
.end method

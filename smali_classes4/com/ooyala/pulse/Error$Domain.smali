.class public Lcom/ooyala/pulse/Error$Domain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/pulse/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Domain"
.end annotation


# static fields
.field public static CORE:Ljava/lang/String; = "Core"

.field public static REQUEST:Ljava/lang/String; = "Request"

.field public static USER:Ljava/lang/String; = "User"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public abstract Lss/ss/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static b:Lss/ss/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lss/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lss/ss/c;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lss/t;)Lss/ss/d;
.end method

.method public abstract a(Lss/i;)Lss/ss/h;
.end method

.method public abstract a(Lss/i;Lss/a;Lss/ss/gK/r;)Lss/ss/pK/b;
.end method

.method public abstract a(Lss/j;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract a(Lss/p$a;Ljava/lang/String;)V
.end method

.method public abstract a(Lss/i;Lss/ss/pK/b;)Z
.end method

.method public abstract b(Lss/i;Lss/ss/pK/b;)V
.end method

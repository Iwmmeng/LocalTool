.class public Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;


# static fields
.field public static final AR:Ljava/lang/String; = "ar"

.field public static final ARJ:Ljava/lang/String; = "arj"

.field public static final CPIO:Ljava/lang/String; = "cpio"

.field public static final DUMP:Ljava/lang/String; = "dump"

.field private static final DUMP_SIGNATURE_SIZE:I = 0x20

.field public static final JAR:Ljava/lang/String; = "jar"

.field public static final SEVEN_Z:Ljava/lang/String; = "7z"

.field private static final SIGNATURE_SIZE:I = 0xc

.field private static final SINGLETON:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

.field public static final TAR:Ljava/lang/String; = "tar"

.field private static final TAR_HEADER_SIZE:I = 0x200

.field public static final ZIP:Ljava/lang/String; = "zip"


# instance fields
.field private archiveInputStreamProviders:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private archiveOutputStreamProviders:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final encoding:Ljava/lang/String;

.field private volatile entryEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->SINGLETON:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->encoding:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->SINGLETON:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->findArchiveStreamProviders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static detect(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mark is not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v0, 0xc

    new-array v0, v0, [B

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "zip"

    return-object p0

    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "jar"

    return-object p0

    :cond_3
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "ar"

    return-object p0

    :cond_4
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "cpio"

    return-object p0

    :cond_5
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p0, "arj"

    return-object p0

    :cond_6
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->matches([BI)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "7z"

    return-object p0

    :cond_7
    const/16 v0, 0x20

    new-array v0, v0, [B

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    :try_start_1
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->matches([BI)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "dump"

    return-object p0

    :cond_8
    const/16 v0, 0x200

    new-array v1, v0, [B

    array-length v2, v1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    :try_start_2
    invoke-static {p0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->matches([BI)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "tar"

    return-object p0

    :cond_9
    if-lt v2, v0, :cond_b

    const/4 p0, 0x0

    :try_start_3
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isCheckSumOK()Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "tar"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :cond_a
    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_0

    :catch_0
    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    invoke-static {p0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    :goto_1
    invoke-static {p0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_b
    :goto_2
    new-instance p0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v0, "No Archiver found for the stream signature"

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v1, "IOException while reading tar signature"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v1, "IOException while reading dump signature"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_4
    move-exception p0

    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v1, "IOException while reading signature."

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private static findArchiveStreamProviders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->serviceLoaderIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/utils/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static findAvailableArchiveInputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$1;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public static findAvailableArchiveOutputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$2;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method static putAll(Ljava/util/Set;Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;Ljava/util/TreeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static serviceLoaderIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;

    const-class v1, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private static toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->detect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    return-object p1
.end method

.method public createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    return-object p1
.end method

.method public createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Archivername must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "InputStream must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_2
    const-string v0, "arj"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    new-instance p1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_4
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p3, :cond_5

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    :cond_5
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_6
    const-string v0, "tar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p3, :cond_7

    new-instance p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    :cond_7
    new-instance p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_8
    const-string v0, "jar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p3, :cond_9

    new-instance p1, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    :cond_9
    new-instance p1, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_a
    const-string v0, "cpio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p3, :cond_b

    new-instance p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    :cond_b
    new-instance p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_c
    const-string v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p3, :cond_d

    new-instance p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    :cond_d
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_e
    const-string v0, "7z"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance p1, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;

    const-string p2, "7z"

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->getArchiveInputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;

    if-eqz v0, :cond_10

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    return-object p1

    :cond_10
    new-instance p2, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Archiver: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Archivername must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OutputStream must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_2
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz p3, :cond_3

    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->setEncoding(Ljava/lang/String;)V

    :cond_3
    return-object p1

    :cond_4
    const-string v0, "tar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p3, :cond_5

    new-instance p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p1

    :cond_5
    new-instance p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_6
    const-string v0, "jar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p3, :cond_7

    new-instance p1, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p1

    :cond_7
    new-instance p1, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_8
    const-string v0, "cpio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p3, :cond_9

    new-instance p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p1

    :cond_9
    new-instance p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_a
    const-string v0, "7z"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;

    const-string p2, "7z"

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->getArchiveOutputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p1

    return-object p1

    :cond_c
    new-instance p2, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Archiver: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getArchiveInputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveInputStreamProviders:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->findAvailableArchiveInputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveInputStreamProviders:Ljava/util/SortedMap;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveInputStreamProviders:Ljava/util/SortedMap;

    return-object v0
.end method

.method public getArchiveOutputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveOutputStreamProviders:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->findAvailableArchiveOutputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveOutputStreamProviders:Ljava/util/SortedMap;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveOutputStreamProviders:Ljava/util/SortedMap;

    return-object v0
.end method

.method public getEntryEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStreamArchiveNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ar"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "arj"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "zip"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "tar"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "jar"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "cpio"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "dump"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "7z"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/apache/commons/compress/utils/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStreamArchiveNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ar"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "zip"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "tar"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "jar"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "cpio"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "7z"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/apache/commons/compress/utils/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public setEntryEncoding(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot overide encoding set by the constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    return-void
.end method
